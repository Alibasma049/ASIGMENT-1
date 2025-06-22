import javafx.fxml.FXML;
import javafx.scene.chart.PieChart;
import javafx.scene.control.Button;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import tracker.model.DBUtility;
import tracker.model.PhoneUsage;

import java.util.List;

public class ChartController {
    @FXML
    private PieChart usageChart;
    @FXML
    private Button tableBtn;

    @FXML
    public void initialize() {
        List<PhoneUsage> usageList = DBUtility.getAllUsage();

        for (PhoneUsage usage : usageList) {
            usageChart.getData().add(
                    new PieChart.Data(usage.getAppName(), usage.getUsageMinutes())
            );
        }
    }

    @FXML
    public void switchToTable(ActionEvent event) throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("/fxml/TableView.fxml"));
        Stage stage = (Stage) tableBtn.getScene().getWindow();
        stage.setScene(new Scene(root));
    }
}

package tracker.controller;

import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.control.Button;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import tracker.model.DBUtility;
import tracker.model.PhoneUsage;

import java.util.List;

public class TableViewController {
    @FXML private TableView<PhoneUsage> table;
    @FXML private TableColumn<PhoneUsage, String> colDate;
    @FXML private TableColumn<PhoneUsage, String> colAppName;
    @FXML private TableColumn<PhoneUsage, Integer> colMinutes;
    @FXML private TableColumn<PhoneUsage, String> colCategory;
    @FXML private Button backBtn;

    @FXML
    public void initialize() {
        colDate.setCellValueFactory(new PropertyValueFactory<>("date"));
        colAppName.setCellValueFactory(new PropertyValueFactory<>("appName"));
        colMinutes.setCellValueFactory(new PropertyValueFactory<>("usageMinutes"));
        colCategory.setCellValueFactory(new PropertyValueFactory<>("category"));

        List<PhoneUsage> data = DBUtility.getAllUsage();
        table.getItems().addAll(data);
    }

    @FXML
    public void switchToChart() throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("/fxml/ChartView.fxml"));
        Stage stage = (Stage) backBtn.getScene().getWindow();
        stage.setScene(new Scene(root));
    }
}
